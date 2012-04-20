.class Lcom/android/deskclock/SetAlarm$2;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    #calls: Lcom/android/deskclock/SetAlarm;->isModified()Z
    invoke-static {v0}, Lcom/android/deskclock/SetAlarm;->access$200(Lcom/android/deskclock/SetAlarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    #calls: Lcom/android/deskclock/SetAlarm;->showConfirmDialog()V
    invoke-static {v0}, Lcom/android/deskclock/SetAlarm;->access$300(Lcom/android/deskclock/SetAlarm;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    #calls: Lcom/android/deskclock/SetAlarm;->revert()V
    invoke-static {v0}, Lcom/android/deskclock/SetAlarm;->access$400(Lcom/android/deskclock/SetAlarm;)V

    .line 136
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-virtual {v0}, Lcom/android/deskclock/SetAlarm;->finish()V

    goto :goto_0
.end method
