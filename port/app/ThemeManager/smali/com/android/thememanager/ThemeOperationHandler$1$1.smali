.class Lcom/android/thememanager/ThemeOperationHandler$1$1;
.super Ljava/lang/Object;
.source "ThemeOperationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeOperationHandler$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/thememanager/ThemeOperationHandler$1;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeOperationHandler$1;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/thememanager/ThemeOperationHandler$1$1;->this$1:Lcom/android/thememanager/ThemeOperationHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/thememanager/ThemeOperationHandler$1$1;->this$1:Lcom/android/thememanager/ThemeOperationHandler$1;

    iget-object v1, v1, Lcom/android/thememanager/ThemeOperationHandler$1;->this$0:Lcom/android/thememanager/ThemeOperationHandler;

    #getter for: Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/thememanager/ThemeOperationHandler;->access$000(Lcom/android/thememanager/ThemeOperationHandler;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 85
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "font files change"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 86
    return-void
.end method