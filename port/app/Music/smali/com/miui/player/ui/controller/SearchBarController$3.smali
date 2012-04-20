.class Lcom/miui/player/ui/controller/SearchBarController$3;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 140
    iput-object p1, p0, Lcom/miui/player/ui/controller/SearchBarController$3;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$3;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0, p2}, Lcom/miui/player/ui/controller/SearchBarController;->showHistoryList(Z)V

    .line 145
    return-void
.end method
