.class Lcom/android/quicksearchbox/SearchActivity$9;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->updateSuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$9;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    iput-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$9;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 661
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$9;->consume(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public consume(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, corporaToQuery:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$9;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity$9;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/quicksearchbox/SearchActivity;->updateSuggestions(Ljava/lang/String;Ljava/util/List;)V

    .line 665
    const/4 v0, 0x1

    return v0
.end method
