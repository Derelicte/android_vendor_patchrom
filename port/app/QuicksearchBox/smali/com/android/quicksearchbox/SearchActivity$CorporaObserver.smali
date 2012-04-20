.class Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;
.super Landroid/database/DataSetObserver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorporaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    #calls: Lcom/android/quicksearchbox/SearchActivity;->getCorpusName()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/quicksearchbox/SearchActivity;->access$600(Lcom/android/quicksearchbox/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/quicksearchbox/SearchActivity;->setCorpus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->access$700(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->updateSuggestions()V

    .line 717
    return-void
.end method
