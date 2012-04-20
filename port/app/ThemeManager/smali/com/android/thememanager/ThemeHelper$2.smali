.class final Lcom/android/thememanager/ThemeHelper$2;
.super Ljava/lang/Object;
.source "ThemeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeHelper;->applyTheme(JJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applyFlags:J

.field final synthetic val$info:Lcom/android/thememanager/ThemeInfo;

.field final synthetic val$removeFlags:J

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeInfo;JJLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/android/thememanager/ThemeHelper$2;->val$info:Lcom/android/thememanager/ThemeInfo;

    iput-wide p2, p0, Lcom/android/thememanager/ThemeHelper$2;->val$removeFlags:J

    iput-wide p4, p0, Lcom/android/thememanager/ThemeHelper$2;->val$applyFlags:J

    iput-object p6, p0, Lcom/android/thememanager/ThemeHelper$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$2;->val$info:Lcom/android/thememanager/ThemeInfo;

    iget-wide v1, p0, Lcom/android/thememanager/ThemeHelper$2;->val$removeFlags:J

    iget-wide v3, p0, Lcom/android/thememanager/ThemeHelper$2;->val$applyFlags:J

    iget-object v5, p0, Lcom/android/thememanager/ThemeHelper$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;->convert_async(JJLjava/lang/Runnable;)V

    .line 1255
    return-void
.end method
