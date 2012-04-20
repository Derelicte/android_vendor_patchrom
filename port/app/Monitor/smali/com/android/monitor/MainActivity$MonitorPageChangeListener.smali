.class Lcom/android/monitor/MainActivity$MonitorPageChangeListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/MainActivity;


# direct methods
.method private constructor <init>(Lcom/android/monitor/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/monitor/MainActivity$MonitorPageChangeListener;->this$0:Lcom/android/monitor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/MainActivity;Lcom/android/monitor/MainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/monitor/MainActivity$MonitorPageChangeListener;-><init>(Lcom/android/monitor/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 230
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 234
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 238
    invoke-static {p1}, Lcom/android/monitor/MainActivity$TabState;->fromInt(I)Lcom/android/monitor/MainActivity$TabState;

    move-result-object v0

    .line 239
    .local v0, tab:Lcom/android/monitor/MainActivity$TabState;
    iget-object v1, p0, Lcom/android/monitor/MainActivity$MonitorPageChangeListener;->this$0:Lcom/android/monitor/MainActivity;

    invoke-virtual {v1, v0}, Lcom/android/monitor/MainActivity;->selectTab(Lcom/android/monitor/MainActivity$TabState;)V

    .line 240
    return-void
.end method
