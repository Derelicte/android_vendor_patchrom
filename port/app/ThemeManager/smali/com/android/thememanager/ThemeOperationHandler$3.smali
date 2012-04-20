.class Lcom/android/thememanager/ThemeOperationHandler$3;
.super Ljava/lang/Object;
.source "ThemeOperationHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeOperationHandler;->giveTipForLockscreenPaper(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ThemeOperationHandler;

.field final synthetic val$localPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/thememanager/ThemeOperationHandler$3;->this$0:Lcom/android/thememanager/ThemeOperationHandler;

    iput-object p2, p0, Lcom/android/thememanager/ThemeOperationHandler$3;->val$localPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/thememanager/ThemeOperationHandler$3;->this$0:Lcom/android/thememanager/ThemeOperationHandler;

    iget-object v1, p0, Lcom/android/thememanager/ThemeOperationHandler$3;->val$localPath:Ljava/lang/String;

    #calls: Lcom/android/thememanager/ThemeOperationHandler;->cutAndSetLockWallpapers(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeOperationHandler;->access$200(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;)V

    .line 162
    return-void
.end method
