.class public abstract Lcom/android/quicksearchbox/AbstractSuggestionCursorWrapper;
.super Lcom/android/quicksearchbox/AbstractSuggestionWrapper;
.source "AbstractSuggestionCursorWrapper.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionCursor;


# instance fields
.field private final mUserQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "userQuery"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/quicksearchbox/AbstractSuggestionCursorWrapper;->mUserQuery:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getUserQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractSuggestionCursorWrapper;->mUserQuery:Ljava/lang/String;

    return-object v0
.end method
