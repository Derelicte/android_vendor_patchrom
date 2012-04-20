.class public Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$Factory;
.super Lcom/android/quicksearchbox/ui/SuggestionViewInflater;
.source "WebSearchSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    const-string v0, "web_search"

    const-class v1, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;

    const v2, 0x7f04000b

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;-><init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V

    .line 94
    return-void
.end method


# virtual methods
.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v0

    return v0
.end method
