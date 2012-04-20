.class Lcom/miui/player/ui/base/TemplateListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TemplateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/TemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/base/TemplateListActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/base/TemplateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$1;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$1;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-boolean v0, v0, Lcom/miui/player/ui/base/TemplateListActivity;->mFromSelf:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$1;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/player/ui/base/TemplateListActivity;->mFromSelf:Z

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$1;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecovered:Z

    goto :goto_0
.end method
