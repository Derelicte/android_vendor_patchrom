.class Lcom/miui/gallery/app/MoviePlayer$5;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 180
    iput-object p1, p0, Lcom/miui/gallery/app/MoviePlayer$5;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$5;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/miui/gallery/app/MoviePlayer;->onCompletion()V

    .line 184
    return-void
.end method
