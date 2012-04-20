.class Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;
.super Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;
.source "GoogleSuggestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/google/GoogleSuggestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleSuggestCursor"
.end annotation


# instance fields
.field private final mPopularity:Lorg/json/JSONArray;

.field private final mSuggestions:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "source"
    .parameter "userQuery"
    .parameter "suggestions"
    .parameter "popularity"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 175
    iput-object p3, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;->mSuggestions:Lorg/json/JSONArray;

    .line 176
    iput-object p4, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;->mPopularity:Lorg/json/JSONArray;

    .line 177
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;->mSuggestions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getSuggestionQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;->mSuggestions:Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuggestionText2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;->mPopularity:Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method
