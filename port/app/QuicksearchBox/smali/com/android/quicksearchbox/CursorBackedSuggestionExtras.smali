.class public Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;
.super Lcom/android/quicksearchbox/AbstractSuggestionExtras;
.source "CursorBackedSuggestionExtras.java"


# static fields
.field private static final DEFAULT_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private final mCursorPosition:I

.field private final mExtraColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->DEFAULT_COLUMNS:Ljava/util/HashSet;

    .line 34
    sget-object v0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->DEFAULT_COLUMNS:Ljava/util/HashSet;

    sget-object v1, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->COLUMNS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;ILjava/util/List;)V
    .locals 1
    .parameter "cursor"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, extraColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/AbstractSuggestionExtras;-><init>(Lcom/android/quicksearchbox/SuggestionExtras;)V

    .line 87
    iput-object p1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->mCursor:Landroid/database/Cursor;

    .line 88
    iput p2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->mCursorPosition:I

    .line 89
    iput-object p3, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->mExtraColumns:Ljava/util/List;

    .line 90
    return-void
.end method

.method static createExtrasIfNecessary(Landroid/database/Cursor;I)Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;
    .locals 2
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->getExtraColumns(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, extraColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;-><init>(Landroid/database/Cursor;ILjava/util/List;)V

    .line 46
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCursorColumns(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 52
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.CursorBackedSuggestionExtras"

    const-string v2, "getColumnNames() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getExtraColumns(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->getCursorColumns(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, columns:[Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 82
    :cond_0
    return-object v3

    .line 73
    :cond_1
    const/4 v3, 0x0

    .line 74
    .local v3, extraColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 75
    .local v2, cursorColumn:Ljava/lang/String;
    sget-object v6, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->DEFAULT_COLUMNS:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 76
    if-nez v3, :cond_2

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #extraColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .restart local v3       #extraColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doGetExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "columnName"

    .prologue
    const/4 v2, 0x0

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->mCursorPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 96
    iget-object v3, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, columnIdx:I
    if-gez v0, :cond_0

    .line 102
    .end local v0           #columnIdx:I
    :goto_0
    return-object v2

    .line 98
    .restart local v0       #columnIdx:I
    :cond_0
    iget-object v3, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 99
    .end local v0           #columnIdx:I
    :catch_0
    move-exception v1

    .line 101
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "QSB.CursorBackedSuggestionExtras"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtra("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic doGetExtraColumnNames()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->doGetExtraColumnNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doGetExtraColumnNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->mExtraColumns:Ljava/util/List;

    return-object v0
.end method
