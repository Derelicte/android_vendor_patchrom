.class Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorStartDateSettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method private constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;-><init>(Lcom/android/monitor/Traffic;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/monitor/Traffic;->access$500(Lcom/android/monitor/Traffic;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/monitor/Traffic;->access$500(Lcom/android/monitor/Traffic;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 204
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 205
    .local v4, view:Landroid/view/View;
    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 207
    .local v2, cycleDayPicker:Landroid/widget/NumberPicker;
    iget-object v5, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v5}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/monitor/net/TrafficService;->getCycleDay()I

    move-result v1

    .line 209
    .local v1, cycleDay:I
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 210
    const/16 v5, 0x1f

    invoke-virtual {v2, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 211
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 212
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 214
    const v5, 0x7f05000b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 217
    const v5, 0x7f050031

    new-instance v6, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;

    invoke-direct {v6, p0, v2}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;-><init>(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 228
    return-void
.end method
