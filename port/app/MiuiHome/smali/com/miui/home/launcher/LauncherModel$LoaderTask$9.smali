.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;
.super Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v0, p1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1280
    .local v0, callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 1283
    :cond_0
    return-void
.end method
