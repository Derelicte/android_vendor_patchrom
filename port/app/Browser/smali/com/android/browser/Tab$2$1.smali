.class Lcom/android/browser/Tab$2$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$2;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$2;

.field final synthetic val$dialog:Z

.field final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$2;ZLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/browser/Tab$2$1;->this$1:Lcom/android/browser/Tab$2;

    iput-boolean p2, p0, Lcom/android/browser/Tab$2$1;->val$dialog:Z

    iput-object p3, p0, Lcom/android/browser/Tab$2$1;->val$resultMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "d"
    .parameter "which"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/browser/Tab$2$1;->this$1:Lcom/android/browser/Tab$2;

    iget-boolean v1, p0, Lcom/android/browser/Tab$2$1;->val$dialog:Z

    iget-object v2, p0, Lcom/android/browser/Tab$2$1;->val$resultMsg:Landroid/os/Message;

    #calls: Lcom/android/browser/Tab$2;->createWindow(ZLandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/browser/Tab$2;->access$1400(Lcom/android/browser/Tab$2;ZLandroid/os/Message;)V

    .line 1022
    return-void
.end method
