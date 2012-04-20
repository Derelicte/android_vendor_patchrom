.class public Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "GoogleSuggestionProvider.java"


# instance fields
.field private mSource:Lcom/android/quicksearchbox/google/GoogleSource;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private buildUriMatcher(Landroid/content/Context;)Landroid/content/UriMatcher;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, authority:Ljava/lang/String;
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 121
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v2, "search_suggest_query"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    const-string v2, "search_suggest_query/*"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    return-object v1
.end method

.method private emptyIfNull(Lcom/android/quicksearchbox/SourceResult;Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 0
    .parameter "result"
    .parameter "source"
    .parameter "query"

    .prologue
    .line 67
    if-nez p1, :cond_0

    new-instance p1, Lcom/android/quicksearchbox/CursorBackedSourceResult;

    .end local p1
    invoke-direct {p1, p2, p3}, Lcom/android/quicksearchbox/CursorBackedSourceResult;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private getQuery(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".google"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 63
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getGoogleSource()Lcom/android/quicksearchbox/google/GoogleSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/android/quicksearchbox/google/GoogleSource;

    .line 53
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->buildUriMatcher(Landroid/content/Context;)Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 75
    iget-object v4, p0, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 77
    .local v1, match:I
    if-nez v1, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, query:Ljava/lang/String;
    new-instance v4, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;

    iget-object v5, p0, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/android/quicksearchbox/google/GoogleSource;

    invoke-interface {v5, v2}, Lcom/android/quicksearchbox/google/GoogleSource;->queryExternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/android/quicksearchbox/google/GoogleSource;

    invoke-direct {p0, v5, v6, v2}, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->emptyIfNull(Lcom/android/quicksearchbox/SourceResult;Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 85
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 81
    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 82
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, shortcutId:Ljava/lang/String;
    const-string v4, "suggest_intent_extra_data"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, extraData:Ljava/lang/String;
    new-instance v4, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;

    iget-object v5, p0, Lcom/android/quicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/android/quicksearchbox/google/GoogleSource;

    invoke-interface {v5, v3, v0}, Lcom/android/quicksearchbox/google/GoogleSource;->refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    goto :goto_0

    .line 87
    .end local v0           #extraData:Ljava/lang/String;
    .end local v3           #shortcutId:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
