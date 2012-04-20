.class Lcom/miui/gallery/app/ActivityState$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/ActivityState;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/ActivityState;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/miui/gallery/app/ActivityState$1;->this$0:Lcom/miui/gallery/app/ActivityState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 191
    .local v2, plugged:Z
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/app/ActivityState$1;->this$0:Lcom/miui/gallery/app/ActivityState;

    #getter for: Lcom/miui/gallery/app/ActivityState;->mPlugged:Z
    invoke-static {v4}, Lcom/miui/gallery/app/ActivityState;->access$000(Lcom/miui/gallery/app/ActivityState;)Z

    move-result v4

    if-eq v2, v4, :cond_1

    .line 192
    iget-object v4, p0, Lcom/miui/gallery/app/ActivityState$1;->this$0:Lcom/miui/gallery/app/ActivityState;

    #setter for: Lcom/miui/gallery/app/ActivityState;->mPlugged:Z
    invoke-static {v4, v2}, Lcom/miui/gallery/app/ActivityState;->access$002(Lcom/miui/gallery/app/ActivityState;Z)Z

    .line 193
    iget-object v4, p0, Lcom/miui/gallery/app/ActivityState$1;->this$0:Lcom/miui/gallery/app/ActivityState;

    iget-object v4, v4, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 194
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 195
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/miui/gallery/app/ActivityState$1;->this$0:Lcom/miui/gallery/app/ActivityState;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/app/ActivityState;->setScreenOnFlags(Landroid/view/WindowManager$LayoutParams;)V

    .line 196
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 199
    .end local v1           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #plugged:Z
    .end local v3           #win:Landroid/view/Window;
    :cond_1
    return-void
.end method
