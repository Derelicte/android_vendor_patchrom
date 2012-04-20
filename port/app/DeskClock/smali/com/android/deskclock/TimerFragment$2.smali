.class Lcom/android/deskclock/TimerFragment$2;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/TimerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/TimerFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/TimerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/deskclock/TimerFragment$2;->this$0:Lcom/android/deskclock/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment$2;->this$0:Lcom/android/deskclock/TimerFragment;

    #calls: Lcom/android/deskclock/TimerFragment;->cancelTimer()V
    invoke-static {v0}, Lcom/android/deskclock/TimerFragment;->access$500(Lcom/android/deskclock/TimerFragment;)V

    .line 107
    return-void
.end method
