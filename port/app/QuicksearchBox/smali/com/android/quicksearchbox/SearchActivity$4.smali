.class Lcom/android/quicksearchbox/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$4;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$4;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    #calls: Lcom/android/quicksearchbox/SearchActivity;->updateSuggestionsBuffered()V
    invoke-static {v0}, Lcom/android/quicksearchbox/SearchActivity;->access$100(Lcom/android/quicksearchbox/SearchActivity;)V

    .line 144
    return-void
.end method
