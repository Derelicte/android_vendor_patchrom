.class Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;
.super Ljava/lang/Object;
.source "DefaultSuggestionView.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
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
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

.field final synthetic val$source:Lcom/android/quicksearchbox/Source;

.field final synthetic val$uniqueIconId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->this$1:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iput-object p2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$uniqueIconId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$source:Lcom/android/quicksearchbox/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .parameter "icon"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$uniqueIconId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->this$1:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    #getter for: Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->access$000(Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->this$1:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$uniqueIconId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$source:Lcom/android/quicksearchbox/Source;

    #calls: Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->access$100(Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->consume(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
