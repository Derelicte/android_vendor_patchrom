.class public Lcom/android/quicksearchbox/ShortcutCursor;
.super Lcom/android/quicksearchbox/ListSuggestionCursor;
.source "ShortcutCursor.java"


# instance fields
.field private mClosed:Z

.field private final mRefreshed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

.field private final mShortcutRepo:Lcom/android/quicksearchbox/ShortcutRepository;

.field private final mShortcuts:Lcom/android/quicksearchbox/SuggestionCursor;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 6
    .parameter "suggestions"

    .prologue
    const/4 v3, 0x0

    .line 65
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/ShortcutCursor;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;ZLandroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;ZLandroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 8
    .parameter "suggestions"
    .parameter "allowWebSearchShortcuts"
    .parameter "uiThread"
    .parameter "refresher"
    .parameter "repository"

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/ShortcutCursor;-><init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V

    .line 71
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v6

    .line 73
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 74
    invoke-interface {p1, v7}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 75
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->isWebSearchSuggestion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ShortcutCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 73
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 82
    :cond_2
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 6
    .parameter "query"
    .parameter "uiThread"
    .parameter "refresher"
    .parameter "repository"

    .prologue
    .line 60
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/ShortcutCursor;-><init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 1
    .parameter "query"
    .parameter "shortcuts"
    .parameter "uiThread"
    .parameter "refresher"
    .parameter "repository"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ListSuggestionCursor;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mClosed:Z

    .line 50
    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mShortcuts:Lcom/android/quicksearchbox/SuggestionCursor;

    .line 51
    iput-object p3, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mUiThread:Landroid/os/Handler;

    .line 52
    iput-object p4, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    .line 53
    iput-object p5, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mShortcutRepo:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mRefreshed:Ljava/util/HashSet;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/ShortcutCursor;)Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mShortcutRepo:Lcom/android/quicksearchbox/ShortcutRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/ShortcutCursor;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ShortcutCursor;->refresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/ShortcutCursor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method private refresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 2
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    .line 117
    iget-boolean v1, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mClosed:Z

    if-eqz v1, :cond_1

    .line 118
    if-eqz p3, :cond_0

    .line 119
    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p3, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mRefreshed:Ljava/util/HashSet;

    invoke-virtual {v1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutCursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ShortcutCursor;->moveTo(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutCursor;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 131
    new-instance v1, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v1, p3}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ShortcutCursor;->replaceRow(Lcom/android/quicksearchbox/Suggestion;)V

    .line 136
    :goto_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutCursor;->notifyDataSetChanged()V

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutCursor;->removeRow()V

    goto :goto_2

    .line 126
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 145
    iget-boolean v2, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mClosed:Z

    if-eqz v2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "double close"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mClosed:Z

    .line 149
    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mShortcuts:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mShortcuts:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mRefreshed:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/SuggestionCursor;

    .line 153
    .local v0, cursor:Lcom/android/quicksearchbox/SuggestionCursor;
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    goto :goto_0

    .line 155
    .end local v0           #cursor:Lcom/android/quicksearchbox/SuggestionCursor;
    :cond_2
    invoke-super {p0}, Lcom/android/quicksearchbox/ListSuggestionCursor;->close()V

    .line 156
    return-void
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public refresh(Lcom/android/quicksearchbox/Suggestion;)V
    .locals 2
    .parameter "shortcut"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutCursor;->mRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    new-instance v1, Lcom/android/quicksearchbox/ShortcutCursor$1;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ShortcutCursor$1;-><init>(Lcom/android/quicksearchbox/ShortcutCursor;)V

    invoke-interface {v0, p1, v1}, Lcom/android/quicksearchbox/ShortcutRefresher;->refresh(Lcom/android/quicksearchbox/Suggestion;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V

    .line 108
    return-void
.end method
