.class Lcom/android/monitor/UidDetailActivity$5$2;
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


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetailActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/monitor/UidDetailActivity$5$2;->this$1:Lcom/android/monitor/UidDetailActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$5$2;->this$1:Lcom/android/monitor/UidDetailActivity$5;

    iget-object v0, v0, Lcom/android/monitor/UidDetailActivity$5;->this$0:Lcom/android/monitor/UidDetailActivity;

    #getter for: Lcom/android/monitor/UidDetailActivity;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;
    invoke-static {v0}, Lcom/android/monitor/UidDetailActivity;->access$500(Lcom/android/monitor/UidDetailActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 178
    return-void
.end method
