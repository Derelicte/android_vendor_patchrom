.class Lcom/android/browser/MiuiBrowserHistoryPage$1;
.super Ljava/lang/Object;
.source "MiuiBrowserHistoryPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiBrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiBrowserHistoryPage;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiBrowserHistoryPage;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/browser/MiuiBrowserHistoryPage$1;->this$0:Lcom/android/browser/MiuiBrowserHistoryPage;

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
    .line 55
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserHistoryPage$1;->this$0:Lcom/android/browser/MiuiBrowserHistoryPage;

    iget-object v0, v0, Lcom/android/browser/MiuiBrowserHistoryPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    check-cast p2, Lcom/android/browser/HistoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/MiuiCombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    .line 56
    return-void
.end method
