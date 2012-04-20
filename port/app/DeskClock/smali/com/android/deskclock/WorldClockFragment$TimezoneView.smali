.class final Lcom/android/deskclock/WorldClockFragment$TimezoneView;
.super Ljava/lang/Object;
.source "WorldClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/WorldClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimezoneView"
.end annotation


# instance fields
.field public final analogClock:Lcom/android/deskclock/TimezoneAnalogClock;

.field public final digitClock:Lcom/android/deskclock/DigitalClock;

.field public final timezoneDate:Landroid/widget/TextView;

.field public final timezoneName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const v0, 0x7f0f0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DigitalClock;

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->digitClock:Lcom/android/deskclock/DigitalClock;

    .line 272
    const v0, 0x7f0f0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/TimezoneAnalogClock;

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->analogClock:Lcom/android/deskclock/TimezoneAnalogClock;

    .line 273
    const v0, 0x7f0f0041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->timezoneDate:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f0f003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->timezoneName:Landroid/widget/TextView;

    .line 275
    return-void
.end method
