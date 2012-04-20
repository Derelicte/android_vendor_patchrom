.class Lcom/android/quicksearchbox/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;


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
    .line 135
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$3;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchClicked(I)Z
    .locals 1
    .parameter "method"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$3;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/SearchActivity;->onSearchClicked(I)Z

    move-result v0

    return v0
.end method
