.class Lcom/miui/gallery/app/MoviePlayer$6;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/MoviePlayer;

.field final synthetic val$bookmark:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/MoviePlayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/miui/gallery/app/MoviePlayer$6;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    iput p2, p0, Lcom/miui/gallery/app/MoviePlayer$6;->val$bookmark:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$6;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$000(Lcom/miui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/MoviePlayer$6;->val$bookmark:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$6;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #calls: Lcom/miui/gallery/app/MoviePlayer;->startVideo()V
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$700(Lcom/miui/gallery/app/MoviePlayer;)V

    .line 192
    return-void
.end method
