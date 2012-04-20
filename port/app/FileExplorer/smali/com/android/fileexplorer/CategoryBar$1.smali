.class Lcom/android/fileexplorer/CategoryBar$1;
.super Ljava/util/TimerTask;
.source "CategoryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/CategoryBar;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/CategoryBar;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/CategoryBar;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/fileexplorer/CategoryBar$1;->this$0:Lcom/android/fileexplorer/CategoryBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/fileexplorer/CategoryBar$1;->this$0:Lcom/android/fileexplorer/CategoryBar;

    #calls: Lcom/android/fileexplorer/CategoryBar;->stepAnimation()V
    invoke-static {v0}, Lcom/android/fileexplorer/CategoryBar;->access$100(Lcom/android/fileexplorer/CategoryBar;)V

    .line 147
    return-void
.end method
