.class Lcom/miui/player/ui/controller/SearchBarController$1;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/controller/SearchBarController;->setSearchActionAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/SearchBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/SearchBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/player/ui/controller/SearchBarController$1;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 111
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 116
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$1;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->showHistoryList(Z)V

    .line 121
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$1;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/controller/SearchBarController;->updateActionState(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
