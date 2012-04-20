.class public Lcom/android/monitor/net/TrafficService$TrafficBinder;
.super Landroid/os/Binder;
.source "TrafficService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/net/TrafficService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrafficBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/net/TrafficService;


# direct methods
.method public constructor <init>(Lcom/android/monitor/net/TrafficService;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/monitor/net/TrafficService$TrafficBinder;->this$0:Lcom/android/monitor/net/TrafficService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/monitor/net/TrafficService;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService$TrafficBinder;->this$0:Lcom/android/monitor/net/TrafficService;

    return-object v0
.end method
