.class Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTextEditorActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, consumed:Z
    if-eqz p3, :cond_0

    .line 559
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onSearchClicked(I)Z

    move-result v0

    .line 567
    :cond_0
    :goto_0
    return v0

    .line 561
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 563
    const/4 v0, 0x1

    goto :goto_0
.end method
