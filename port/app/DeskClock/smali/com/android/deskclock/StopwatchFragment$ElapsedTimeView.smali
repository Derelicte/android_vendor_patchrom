.class final Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ElapsedTimeView"
.end annotation


# instance fields
.field public final elapsedTime:Landroid/widget/TextView;

.field public final index:Landroid/widget/TextView;

.field public final lapElapsedTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const v0, 0x7f0f0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;->index:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0f0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;->elapsedTime:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0f0035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;->lapElapsedTime:Landroid/widget/TextView;

    .line 157
    return-void
.end method
