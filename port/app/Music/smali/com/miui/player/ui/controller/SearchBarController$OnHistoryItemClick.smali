.class Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/SearchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnHistoryItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/SearchBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/SearchBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    add-int/lit8 p3, p3, -0x1

    .line 387
    if-gez p3, :cond_0

    .line 400
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    iget-object v0, v0, Lcom/miui/player/ui/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/SearchBarController;->clearSearchHistory()V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    iget-object v0, v0, Lcom/miui/player/ui/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/miui/player/ui/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    iget-object v0, v0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    iget-object v0, v0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 399
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->searchAction(I)V

    goto :goto_0
.end method
