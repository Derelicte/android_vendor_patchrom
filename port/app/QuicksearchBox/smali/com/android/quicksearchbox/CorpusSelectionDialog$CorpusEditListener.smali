.class Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusEditListener;
.super Ljava/lang/Object;
.source "CorpusSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/CorpusSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorpusEditListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/CorpusSelectionDialog;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/CorpusSelectionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusEditListener;->this$0:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/CorpusSelectionDialog;Lcom/android/quicksearchbox/CorpusSelectionDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusEditListener;-><init>(Lcom/android/quicksearchbox/CorpusSelectionDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusEditListener;->this$0:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/SearchSettings;->getSearchableItemsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 200
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusEditListener;->this$0:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method
