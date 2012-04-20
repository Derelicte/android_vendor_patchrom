.class Lcom/miui/gallery/app/MoviePlayer$4;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/miui/gallery/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
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
    .line 132
    iput-object p1, p0, Lcom/miui/gallery/app/MoviePlayer$4;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 134
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$4;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$100(Lcom/miui/gallery/app/MoviePlayer;)Lcom/miui/gallery/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay;->show()V

    .line 137
    :cond_0
    return-void
.end method
