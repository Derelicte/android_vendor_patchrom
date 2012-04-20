.class Lcom/android/fileexplorer/FileViewInteractionHub$4;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCreateFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$4;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$4;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->doCreateFolder(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$500(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
