.class Lcom/android/monitor/Traffic$2;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/monitor/Traffic$2;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/monitor/Traffic$2;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;
    invoke-static {v0}, Lcom/android/monitor/Traffic;->access$300(Lcom/android/monitor/Traffic;)Lcom/android/monitor/widget/DialogTrafficSettingItem;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/monitor/Traffic$2;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficSettingClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/monitor/Traffic;->access$200(Lcom/android/monitor/Traffic;)Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/monitor/Traffic$2;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v0}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    :goto_1
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    if-nez p2, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/monitor/Traffic$2;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v0}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/monitor/net/TrafficService;->setLimitBytes(J)V

    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/monitor/Traffic$2;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v0}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x3200000

    const-wide/32 v4, 0x2800000

    invoke-virtual/range {v0 .. v5}, Lcom/android/monitor/net/TrafficService;->setPolicy(IJJ)V

    goto :goto_1
.end method
