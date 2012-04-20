.class Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/SearchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSearchAction"
.end annotation


# instance fields
.field private mActionType:I

.field final synthetic this$0:Lcom/miui/player/ui/controller/SearchBarController;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/controller/SearchBarController;I)V
    .locals 0
    .parameter
    .parameter "actionType"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p2, p0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->mActionType:I

    .line 210
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    iget v1, p0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->mActionType:I

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->searchAction(I)V

    .line 219
    return-void
.end method

.method public setActionType(I)V
    .locals 0
    .parameter "actionType"

    .prologue
    .line 213
    iput p1, p0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->mActionType:I

    .line 214
    return-void
.end method
