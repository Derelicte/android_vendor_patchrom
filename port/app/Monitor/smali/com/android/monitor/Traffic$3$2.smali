.class Lcom/android/monitor/Traffic$3$2;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/Traffic$3;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/monitor/Traffic$3;


# direct methods
.method constructor <init>(Lcom/android/monitor/Traffic$3;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/monitor/Traffic$3$2;->this$1:Lcom/android/monitor/Traffic$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/monitor/Traffic$3$2;->this$1:Lcom/android/monitor/Traffic$3;

    iget-object v0, v0, Lcom/android/monitor/Traffic$3;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;
    invoke-static {v0}, Lcom/android/monitor/Traffic;->access$600(Lcom/android/monitor/Traffic;)Lmiui/widget/SlidingButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 174
    return-void
.end method
