.class Lcom/android/fileexplorer/FileViewInteractionHub$5;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationRename()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

.field final synthetic val$f:Lcom/android/fileexplorer/FileInfo;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$5;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    iput-object p2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$5;->val$f:Lcom/android/fileexplorer/FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$5;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$5;->val$f:Lcom/android/fileexplorer/FileInfo;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->doRename(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$600(Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
