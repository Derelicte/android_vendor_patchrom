.class Lcom/android/thememanager/ThemeOperationHandler$2;
.super Ljava/lang/Object;
.source "ThemeOperationHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeOperationHandler;->doApplyResource(Lcom/android/thememanager/ThemeResourceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ThemeOperationHandler;

.field final synthetic val$applyFlags:J

.field final synthetic val$localPath:Ljava/lang/String;

.field final synthetic val$removeFlags:J


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/thememanager/ThemeOperationHandler$2;->this$0:Lcom/android/thememanager/ThemeOperationHandler;

    iput-object p2, p0, Lcom/android/thememanager/ThemeOperationHandler$2;->val$localPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/thememanager/ThemeOperationHandler$2;->val$removeFlags:J

    iput-wide p5, p0, Lcom/android/thememanager/ThemeOperationHandler$2;->val$applyFlags:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-wide/16 v6, -0x11

    .line 96
    iget-object v0, p0, Lcom/android/thememanager/ThemeOperationHandler$2;->this$0:Lcom/android/thememanager/ThemeOperationHandler;

    iget-object v1, p0, Lcom/android/thememanager/ThemeOperationHandler$2;->val$localPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/thememanager/ThemeOperationHandler$2;->val$removeFlags:J

    and-long/2addr v2, v6

    iget-wide v4, p0, Lcom/android/thememanager/ThemeOperationHandler$2;->val$applyFlags:J

    and-long/2addr v4, v6

    const/4 v6, 0x0

    #calls: Lcom/android/thememanager/ThemeOperationHandler;->applyTheme(Ljava/lang/String;JJLjava/lang/Runnable;)V
    invoke-static/range {v0 .. v6}, Lcom/android/thememanager/ThemeOperationHandler;->access$100(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;JJLjava/lang/Runnable;)V

    .line 97
    return-void
.end method
