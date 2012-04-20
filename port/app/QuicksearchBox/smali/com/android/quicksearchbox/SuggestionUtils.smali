.class public Lcom/android/quicksearchbox/SuggestionUtils;
.super Ljava/lang/Object;
.source "SuggestionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getSuggestionIntent(Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 7
    .parameter "suggestion"
    .parameter "appSearchData"

    .prologue
    .line 35
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, data:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, query:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, userQuery:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, extraData:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    const/high16 v6, 0x400

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    :cond_0
    const-string v6, "user_query"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    if-eqz v4, :cond_1

    .line 53
    const-string v6, "query"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_1
    if-eqz v2, :cond_2

    .line 56
    const-string v6, "intent_extra_data_key"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_2
    if-eqz p1, :cond_3

    .line 59
    const-string v6, "app_data"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    :cond_3
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    return-object v3
.end method

.method public static getSuggestionKey(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 7
    .parameter "suggestion"

    .prologue
    const/16 v6, 0x23

    .line 71
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/quicksearchbox/SuggestionUtils;->makeKeyComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/quicksearchbox/SuggestionUtils;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/quicksearchbox/SuggestionUtils;->makeKeyComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, data:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/quicksearchbox/SuggestionUtils;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/quicksearchbox/SuggestionUtils;->makeKeyComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, query:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 77
    .local v3, size:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static makeKeyComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "str"

    .prologue
    .line 87
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method static normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 102
    if-eqz p0, :cond_1

    .line 104
    const-string v4, "://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, schemePos:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, normalized:Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 113
    .local v3, start:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 114
    .local v0, end:I
    const/16 v4, 0x2f

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_0

    .line 115
    add-int/lit8 v0, v0, -0x1

    .line 117
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 119
    .end local v0           #end:I
    .end local v1           #normalized:Ljava/lang/String;
    .end local v2           #schemePos:I
    .end local v3           #start:I
    .end local p0
    :cond_1
    return-object p0

    .line 110
    .restart local v2       #schemePos:I
    .restart local p0
    :cond_2
    move-object v1, p0

    .line 111
    .restart local v1       #normalized:Ljava/lang/String;
    const-string v4, "://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v3, v2, v4

    .restart local v3       #start:I
    goto :goto_0
.end method
