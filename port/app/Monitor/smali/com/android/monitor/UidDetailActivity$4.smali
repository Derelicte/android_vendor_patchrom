.class Lcom/android/monitor/UidDetailActivity$4;
.super Ljava/lang/Object;
.source "UidDetailActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 119
    iput-object p1, p0, Lcom/android/monitor/UidDetailActivity$4;->this$0:Lcom/android/monitor/UidDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 122
    invoke-static {}, Lcom/android/monitor/UidDetailActivity;->access$200()Lcom/android/monitor/net/UidInfo;

    move-result-object v0

    iput-boolean p2, v0, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    .line 123
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$4;->this$0:Lcom/android/monitor/UidDetailActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/monitor/UidDetailActivity;->setAccessMode(ZZ)V
    invoke-static {v0, p2, v1}, Lcom/android/monitor/UidDetailActivity;->access$300(Lcom/android/monitor/UidDetailActivity;ZZ)V

    .line 124
    return-void
.end method
