.class Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView$1;
.super Ljava/lang/Object;
.source "ClusteredSuggestionsView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView$1;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
