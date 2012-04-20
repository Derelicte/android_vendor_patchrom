.class Lcom/android/monitor/UidDetailActivity$5$1;
.super Ljava/lang/Object;
.source "UidDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/UidDetailActivity$5;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/monitor/UidDetailActivity$5;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetailActivity$5;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/monitor/UidDetailActivity$5$1;->this$1:Lcom/android/monitor/UidDetailActivity$5;

    iput p2, p0, Lcom/android/monitor/UidDetailActivity$5$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 171
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$5$1;->this$1:Lcom/android/monitor/UidDetailActivity$5;

    iget-object v0, v0, Lcom/android/monitor/UidDetailActivity$5;->this$0:Lcom/android/monitor/UidDetailActivity;

    #getter for: Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v0}, Lcom/android/monitor/UidDetailActivity;->access$400(Lcom/android/monitor/UidDetailActivity;)Lcom/android/monitor/net/TrafficService;

    move-result-object v0

    iget v1, p0, Lcom/android/monitor/UidDetailActivity$5$1;->val$uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/monitor/net/TrafficService;->setAppRestrictBackground(IZ)V

    .line 172
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$5$1;->this$1:Lcom/android/monitor/UidDetailActivity$5;

    iget-object v0, v0, Lcom/android/monitor/UidDetailActivity$5;->this$0:Lcom/android/monitor/UidDetailActivity;

    #getter for: Lcom/android/monitor/UidDetailActivity;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;
    invoke-static {v0}, Lcom/android/monitor/UidDetailActivity;->access$500(Lcom/android/monitor/UidDetailActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 173
    return-void
.end method
