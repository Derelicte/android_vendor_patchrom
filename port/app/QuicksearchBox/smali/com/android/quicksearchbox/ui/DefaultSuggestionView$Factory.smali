.class public Lcom/android/quicksearchbox/ui/DefaultSuggestionView$Factory;
.super Lcom/android/quicksearchbox/ui/SuggestionViewInflater;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
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
    .line 249
    const-string v0, "default"

    const-class v1, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;

    const v2, 0x7f040008

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;-><init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V

    .line 250
    return-void
.end method
