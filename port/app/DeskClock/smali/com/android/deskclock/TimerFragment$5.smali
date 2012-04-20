.class Lcom/android/deskclock/TimerFragment$5;
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
    .line 134
    iput-object p1, p0, Lcom/android/deskclock/TimerFragment$5;->this$0:Lcom/android/deskclock/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment$5;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/deskclock/TimerFragment;->access$700(Lcom/android/deskclock/TimerFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment$5;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/deskclock/TimerFragment;->access$700(Lcom/android/deskclock/TimerFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment$5;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/deskclock/TimerFragment;->access$800(Lcom/android/deskclock/TimerFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "KeepScreen"

    iget-object v3, p0, Lcom/android/deskclock/TimerFragment$5;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/deskclock/TimerFragment;->access$700(Lcom/android/deskclock/TimerFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment$5;->this$0:Lcom/android/deskclock/TimerFragment;

    iget-object v3, p0, Lcom/android/deskclock/TimerFragment$5;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mTimerState:I
    invoke-static {v3}, Lcom/android/deskclock/TimerFragment;->access$100(Lcom/android/deskclock/TimerFragment;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/deskclock/TimerFragment$5;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/deskclock/TimerFragment;->access$700(Lcom/android/deskclock/TimerFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    :cond_0
    #calls: Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V
    invoke-static {v1, v2}, Lcom/android/deskclock/TimerFragment;->access$900(Lcom/android/deskclock/TimerFragment;Z)V

    .line 141
    return-void

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v1, v2

    .line 136
    goto :goto_0
.end method
