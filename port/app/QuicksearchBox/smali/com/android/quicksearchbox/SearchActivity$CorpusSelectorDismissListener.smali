.class Lcom/android/quicksearchbox/SearchActivity$CorpusSelectorDismissListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorpusSelectorDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$CorpusSelectorDismissListener;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$CorpusSelectorDismissListener;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$CorpusSelectorDismissListener;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->clearStartedIntoCorpusSelectionDialog()V

    .line 709
    return-void
.end method
