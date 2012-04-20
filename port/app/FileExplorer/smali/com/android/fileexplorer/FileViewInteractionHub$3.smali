.class Lcom/android/fileexplorer/FileViewInteractionHub$3;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 285
    const-class v0, Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/fileexplorer/FileViewInteractionHub$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$3;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, path:Ljava/lang/String;
    sget-boolean v1, Lcom/android/fileexplorer/FileViewInteractionHub$3;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$3;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/4 v2, 0x0

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V
    invoke-static {v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$200(Lcom/android/fileexplorer/FileViewInteractionHub;Z)V

    .line 292
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$3;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;
    invoke-static {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$300(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/IFileInteractionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/fileexplorer/IFileInteractionListener;->onNavigation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$3;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #setter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$402(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$3;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    goto :goto_0
.end method
