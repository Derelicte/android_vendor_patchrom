.class Lcom/miui/gallery/app/MovieControllerOverlay$1;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/gallery/app/MovieControllerOverlay$1;->this$0:Lcom/miui/gallery/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay$1;->this$0:Lcom/miui/gallery/app/MovieControllerOverlay;

    #calls: Lcom/miui/gallery/app/MovieControllerOverlay;->startHiding()V
    invoke-static {v0}, Lcom/miui/gallery/app/MovieControllerOverlay;->access$000(Lcom/miui/gallery/app/MovieControllerOverlay;)V

    .line 127
    return-void
.end method
