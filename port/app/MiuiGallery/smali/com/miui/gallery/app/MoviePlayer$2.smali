.class Lcom/miui/gallery/app/MoviePlayer$2;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/gallery/app/MoviePlayer$2;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer$2;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #calls: Lcom/miui/gallery/app/MoviePlayer;->setProgress()I
    invoke-static {v1}, Lcom/miui/gallery/app/MoviePlayer;->access$400(Lcom/miui/gallery/app/MoviePlayer;)I

    move-result v0

    .line 101
    .local v0, pos:I
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer$2;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/app/MoviePlayer;->access$300(Lcom/miui/gallery/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer$2;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/miui/gallery/app/MoviePlayer;->access$500(Lcom/miui/gallery/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v3, v0, 0x3e8

    rsub-int v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method
