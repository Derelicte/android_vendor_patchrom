.class Lcom/android/monitor/UidDetailActivity$1;
.super Ljava/lang/Object;
.source "UidDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/UidDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/UidDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/monitor/UidDetailActivity$1;->this$0:Lcom/android/monitor/UidDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$1;->this$0:Lcom/android/monitor/UidDetailActivity;

    #calls: Lcom/android/monitor/UidDetailActivity;->killProcesses()V
    invoke-static {v0}, Lcom/android/monitor/UidDetailActivity;->access$000(Lcom/android/monitor/UidDetailActivity;)V

    .line 92
    return-void
.end method
