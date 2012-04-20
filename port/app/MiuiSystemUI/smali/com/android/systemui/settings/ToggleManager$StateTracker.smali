.class public abstract Lcom/android/systemui/settings/ToggleManager$StateTracker;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    .line 699
    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 700
    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 706
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 804
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 820
    :goto_0
    return v0

    .line 814
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleManager$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 816
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 818
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 754
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    .line 755
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 774
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 775
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 776
    const-string v1, "ToggleManager"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    const-string v1, "ToggleManager"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 787
    :cond_1
    return-void

    .line 757
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    .line 758
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 761
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    .line 762
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 765
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    .line 766
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 769
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    .line 770
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 780
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 781
    iput-boolean v4, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    .line 782
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/settings/ToggleManager$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleManager$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 715
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 716
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 729
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 730
    iget-boolean v3, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 735
    iput-boolean v2, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 740
    :goto_1
    return-void

    .line 718
    :pswitch_1
    const/4 v1, 0x0

    .line 719
    goto :goto_0

    .line 721
    :pswitch_2
    const/4 v1, 0x1

    .line 722
    goto :goto_0

    .line 724
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 725
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 737
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/settings/ToggleManager$StateTracker;->mInTransition:Z

    .line 738
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/settings/ToggleManager$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 716
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
