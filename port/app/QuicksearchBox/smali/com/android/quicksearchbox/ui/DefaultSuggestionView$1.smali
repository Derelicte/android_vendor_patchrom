.class Lcom/android/quicksearchbox/ui/DefaultSuggestionView$1;
.super Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/DefaultSuggestionView;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$1;->this$0:Lcom/android/quicksearchbox/ui/DefaultSuggestionView;

    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;-><init>(Lcom/android/quicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "source"

    .prologue
    .line 80
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;
    .locals 1
    .parameter "source"

    .prologue
    .line 76
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
