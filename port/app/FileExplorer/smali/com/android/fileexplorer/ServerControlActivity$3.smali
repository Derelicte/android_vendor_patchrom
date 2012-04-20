.class Lcom/android/fileexplorer/ServerControlActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ServerControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/ServerControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/ServerControlActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/ServerControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/fileexplorer/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/ServerControlActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/ServerControlActivity;

    iget-object v0, v0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    const-string v2, "Wifi status broadcast received"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/ServerControlActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/ServerControlActivity;->updateUi()V

    .line 251
    return-void
.end method
