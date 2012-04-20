.class Lcom/android/inputmethod/latin/LatinIME$1;
.super Landroid/content/BroadcastReceiver;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter

    .prologue
    .line 2191
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2195
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2196
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$600(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2197
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2198
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$700(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->onNetworkStateChanged(Landroid/content/Intent;)V

    goto :goto_0
.end method
