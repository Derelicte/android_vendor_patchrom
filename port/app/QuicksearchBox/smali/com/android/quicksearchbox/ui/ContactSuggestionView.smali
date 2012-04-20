.class public Lcom/android/quicksearchbox/ui/ContactSuggestionView;
.super Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
.source "ContactSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/ContactSuggestionView$1;,
        Lcom/android/quicksearchbox/ui/ContactSuggestionView$Factory;,
        Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;
    }
.end annotation


# instance fields
.field private mQuickContact:Lcom/android/quicksearchbox/ui/ContactBadge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 3
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->mQuickContact:Lcom/android/quicksearchbox/ui/ContactBadge;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 63
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->mQuickContact:Lcom/android/quicksearchbox/ui/ContactBadge;

    new-instance v1, Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;-><init>(Lcom/android/quicksearchbox/ui/ContactSuggestionView;Lcom/android/quicksearchbox/ui/ContactSuggestionView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ContactBadge;->setExtraOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->onFinishInflate()V

    .line 56
    const v0, 0x7f0f0001

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/ContactBadge;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->mQuickContact:Lcom/android/quicksearchbox/ui/ContactBadge;

    .line 57
    return-void
.end method
