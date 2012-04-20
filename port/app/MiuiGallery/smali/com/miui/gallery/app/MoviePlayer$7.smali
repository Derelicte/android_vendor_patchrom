.class Lcom/miui/gallery/app/MoviePlayer$7;
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


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/miui/gallery/app/MoviePlayer$7;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$7;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #calls: Lcom/miui/gallery/app/MoviePlayer;->startVideo()V
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$700(Lcom/miui/gallery/app/MoviePlayer;)V

    .line 199
    return-void
.end method
