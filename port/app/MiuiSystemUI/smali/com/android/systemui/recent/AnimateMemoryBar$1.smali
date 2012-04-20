.class Lcom/android/systemui/recent/AnimateMemoryBar$1;
.super Ljava/lang/Object;
.source "AnimateMemoryBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/AnimateMemoryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/AnimateMemoryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/AnimateMemoryBar;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/recent/AnimateMemoryBar$1;->this$0:Lcom/android/systemui/recent/AnimateMemoryBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar$1;->this$0:Lcom/android/systemui/recent/AnimateMemoryBar;

    invoke-virtual {v0}, Lcom/android/systemui/recent/AnimateMemoryBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar$1;->this$0:Lcom/android/systemui/recent/AnimateMemoryBar;

    #calls: Lcom/android/systemui/recent/AnimateMemoryBar;->refreshMemoryInfo()V
    invoke-static {v0}, Lcom/android/systemui/recent/AnimateMemoryBar;->access$000(Lcom/android/systemui/recent/AnimateMemoryBar;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar$1;->this$0:Lcom/android/systemui/recent/AnimateMemoryBar;

    invoke-static {}, Lcom/android/systemui/recent/AnimateMemoryBar;->access$100()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/recent/AnimateMemoryBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar$1;->this$0:Lcom/android/systemui/recent/AnimateMemoryBar;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/recent/AnimateMemoryBar;->mIsRefreshRunnablePosted:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/AnimateMemoryBar;->access$202(Lcom/android/systemui/recent/AnimateMemoryBar;Z)Z

    goto :goto_0
.end method
