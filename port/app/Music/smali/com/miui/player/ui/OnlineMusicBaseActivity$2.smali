.class Lcom/miui/player/ui/OnlineMusicBaseActivity$2;
.super Ljava/lang/Object;
.source "OnlineMusicBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->updateDownloadStatus()V

    .line 245
    :cond_0
    return-void
.end method
