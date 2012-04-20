.class Lcom/miui/backup/SDCardMonitor$SdCardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/SDCardMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/SDCardMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/backup/SDCardMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/backup/SDCardMonitor;Lcom/miui/backup/SDCardMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;-><init>(Lcom/miui/backup/SDCardMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v3}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    #getter for: Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/miui/backup/SDCardMonitor;->access$100(Lcom/miui/backup/SDCardMonitor;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    #getter for: Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/miui/backup/SDCardMonitor;->access$100(Lcom/miui/backup/SDCardMonitor;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #setter for: Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;
    invoke-static {v3, v4}, Lcom/miui/backup/SDCardMonitor;->access$102(Lcom/miui/backup/SDCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 60
    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    #getter for: Lcom/miui/backup/SDCardMonitor;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/miui/backup/SDCardMonitor;->access$200(Lcom/miui/backup/SDCardMonitor;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;

    .line 61
    .local v2, listener:Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;
    invoke-interface {v2, v6}, Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;->onSdcardStatusChanged(Z)V

    goto :goto_0

    .line 65
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;
    :cond_1
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v3}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    #getter for: Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/miui/backup/SDCardMonitor;->access$100(Lcom/miui/backup/SDCardMonitor;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    #getter for: Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/miui/backup/SDCardMonitor;->access$100(Lcom/miui/backup/SDCardMonitor;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    :cond_2
    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #setter for: Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;
    invoke-static {v3, v4}, Lcom/miui/backup/SDCardMonitor;->access$102(Lcom/miui/backup/SDCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 69
    iget-object v3, p0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;->this$0:Lcom/miui/backup/SDCardMonitor;

    #getter for: Lcom/miui/backup/SDCardMonitor;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/miui/backup/SDCardMonitor;->access$200(Lcom/miui/backup/SDCardMonitor;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;

    .line 70
    .restart local v2       #listener:Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;
    invoke-interface {v2, v5}, Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;->onSdcardStatusChanged(Z)V

    goto :goto_1

    .line 75
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;
    :cond_3
    return-void
.end method
