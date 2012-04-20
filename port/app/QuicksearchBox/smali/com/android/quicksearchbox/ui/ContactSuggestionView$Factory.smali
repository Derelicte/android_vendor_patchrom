.class public Lcom/android/quicksearchbox/ui/ContactSuggestionView$Factory;
.super Lcom/android/quicksearchbox/ui/SuggestionViewInflater;
.source "ContactSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/ContactSuggestionView;
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
    .line 74
    const-string v0, "contact"

    const-class v1, Lcom/android/quicksearchbox/ui/ContactSuggestionView;

    const/high16 v2, 0x7f04

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;-><init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V

    .line 75
    return-void
.end method


# virtual methods
.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 3
    .parameter "suggestion"

    .prologue
    .line 79
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    .line 80
    .local v1, source:Lcom/android/quicksearchbox/Source;
    instance-of v2, v1, Lcom/android/quicksearchbox/SearchableSource;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 81
    check-cast v0, Lcom/android/quicksearchbox/SearchableSource;

    .line 82
    .local v0, searchableSource:Lcom/android/quicksearchbox/SearchableSource;
    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchableSource;->getSearchableInfo()Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/ui/ContactSuggestionView$Factory;->isSearchableContacts(Landroid/app/SearchableInfo;)Z

    move-result v2

    .line 84
    .end local v0           #searchableSource:Lcom/android/quicksearchbox/SearchableSource;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isSearchableContacts(Landroid/app/SearchableInfo;)Z
    .locals 2
    .parameter "searchable"

    .prologue
    .line 88
    const-string v0, "com.android.contacts"

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
