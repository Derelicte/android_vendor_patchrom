.class Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;
.super Ljava/lang/Object;
.source "OnlineMusicBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnRetryClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->startSongListLoadingAsync()V

    .line 162
    return-void
.end method
