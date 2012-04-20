.class public abstract Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;
.super Ljava/lang/Object;
.source "AbstractGoogleSourceResult.java"

# interfaces
.implements Lcom/android/quicksearchbox/SourceResult;


# instance fields
.field private mPos:I

.field private final mSource:Lcom/android/quicksearchbox/Source;

.field private final mUserQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 1
    .parameter "source"
    .parameter "userQuery"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mPos:I

    .line 35
    iput-object p1, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    .line 36
    iput-object p2, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mUserQuery:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getExtraColumns()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mPos:I

    return v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public getSuggestionFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f02003e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getDefaultIntentAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionIntentExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSuggestionQuery()Ljava/lang/String;
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public getSuggestionText1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionText2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mUserQuery:Ljava/lang/String;

    return-object v0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isSpinnerWhileRefreshing()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isWebSearchSuggestion()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public moveTo(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mPos:I

    .line 60
    return-void
.end method

.method public moveToNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->getCount()I

    move-result v0

    .line 64
    .local v0, size:I
    iget v2, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mPos:I

    if-lt v2, v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    iget v2, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mPos:I

    .line 69
    iget v2, p0, Lcom/android/quicksearchbox/google/AbstractGoogleSourceResult;->mPos:I

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
