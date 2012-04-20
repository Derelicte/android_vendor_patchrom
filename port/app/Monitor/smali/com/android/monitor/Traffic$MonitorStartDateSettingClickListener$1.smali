.class Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    iput-object p2, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 221
    .local v0, cycleDay:I
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    iget-object v1, v1, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/widget/DialogTrafficSettingItem;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$800(Lcom/android/monitor/Traffic;)Lcom/android/monitor/widget/DialogTrafficSettingItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    iget-object v2, v2, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    const v3, 0x7f05000c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    iget-object v1, v1, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/monitor/net/TrafficService;->setCycleDay(I)V

    .line 223
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    iget-object v1, v1, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/monitor/net/TrafficService;->refresh()V

    .line 224
    return-void
.end method
