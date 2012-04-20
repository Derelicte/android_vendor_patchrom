.class Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;
.super Ljava/lang/Thread;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1072
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1073
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1$1;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1$1;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;)V

    #setter for: Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->access$802(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1083
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    monitor-enter v1

    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1085
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1087
    return-void

    .line 1085
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
