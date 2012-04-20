.class Lcom/android/monitor/net/TrafficService$TrafficHandler;
.super Landroid/os/Handler;
.source "TrafficService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/net/TrafficService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/net/TrafficService;


# direct methods
.method private constructor <init>(Lcom/android/monitor/net/TrafficService;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/monitor/net/TrafficService$TrafficHandler;->this$0:Lcom/android/monitor/net/TrafficService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/net/TrafficService;Lcom/android/monitor/net/TrafficService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/monitor/net/TrafficService$TrafficHandler;-><init>(Lcom/android/monitor/net/TrafficService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService$TrafficHandler;->this$0:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService;->refresh()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
