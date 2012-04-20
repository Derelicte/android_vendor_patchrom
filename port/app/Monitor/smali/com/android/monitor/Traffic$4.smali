.class Lcom/android/monitor/Traffic$4;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 181
    iput-object p1, p0, Lcom/android/monitor/Traffic$4;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 184
    iget-object v7, p0, Lcom/android/monitor/Traffic$4;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v7}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/monitor/net/TrafficService;->getLimitBytes()J

    move-result-wide v2

    .line 185
    .local v2, limit:J
    iget-object v7, p0, Lcom/android/monitor/Traffic$4;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v7}, Lcom/android/monitor/Traffic;->access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/monitor/net/TrafficService;->getWarningBytes()J

    move-result-wide v5

    .line 187
    .local v5, warning:J
    iget-object v7, p0, Lcom/android/monitor/Traffic$4;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/monitor/Traffic;->access$700(Lcom/android/monitor/Traffic;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 188
    .local v4, view:Landroid/view/View;
    const v7, 0x7f070021

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 189
    .local v0, inputMaxTraffic:Landroid/widget/EditText;
    const v7, 0x7f070022

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 190
    .local v1, inputWarningTraffic:Landroid/widget/EditText;
    invoke-static {v2, v3}, Lcom/android/monitor/util/SysUtils;->byteToMib(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {v5, v6}, Lcom/android/monitor/util/SysUtils;->byteToMib(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v7, p0, Lcom/android/monitor/Traffic$4;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;
    invoke-static {v7}, Lcom/android/monitor/Traffic;->access$300(Lcom/android/monitor/Traffic;)Lcom/android/monitor/widget/DialogTrafficSettingItem;

    move-result-object v7

    iget-object v8, p0, Lcom/android/monitor/Traffic$4;->this$0:Lcom/android/monitor/Traffic;

    const v9, 0x7f05000a

    invoke-virtual {v8, v9}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->showDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 194
    return-void
.end method
