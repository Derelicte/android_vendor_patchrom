.class Lcom/android/deskclock/TimerFragment$6;
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
    .line 145
    iput-object p1, p0, Lcom/android/deskclock/TimerFragment$6;->this$0:Lcom/android/deskclock/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, ringtonePickerIntent:Landroid/content/Intent;
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment$6;->this$0:Lcom/android/deskclock/TimerFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/deskclock/TimerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    return-void
.end method
