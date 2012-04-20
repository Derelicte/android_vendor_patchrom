.class Lcom/android/quicksearchbox/SourceShortcutRefresher;
.super Ljava/lang/Object;
.source "SourceShortcutRefresher.java"

# interfaces
.implements Lcom/android/quicksearchbox/ShortcutRefresher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;
    }
.end annotation


# instance fields
.field private final mExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private final mRefreshed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshing:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mRefreshed:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mRefreshing:Ljava/util/Set;

    .line 46
    iput-object p1, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 47
    return-void
.end method

.method private static makeKey(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private markShortcutRefreshing(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mRefreshing:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/SourceShortcutRefresher;->makeKey(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public isRefreshing(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 77
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mRefreshing:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/SourceShortcutRefresher;->makeKey(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 89
    invoke-static {p1, p2}, Lcom/android/quicksearchbox/SourceShortcutRefresher;->makeKey(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mRefreshed:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mRefreshing:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public refresh(Lcom/android/quicksearchbox/Suggestion;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V
    .locals 6
    .parameter "shortcut"
    .parameter "listener"

    .prologue
    .line 50
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v2

    .line 51
    .local v2, source:Lcom/android/quicksearchbox/Source;
    if-nez v2, :cond_0

    .line 52
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v5, "source"

    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, shortcutId:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/quicksearchbox/SourceShortcutRefresher;->shouldRefresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/android/quicksearchbox/SourceShortcutRefresher;->isRefreshing(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-direct {p0, v2, v3}, Lcom/android/quicksearchbox/SourceShortcutRefresher;->markShortcutRefreshing(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, extraData:Ljava/lang/String;
    new-instance v0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;-><init>(Lcom/android/quicksearchbox/SourceShortcutRefresher;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Ljava/lang/String;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V

    .line 64
    .local v0, refreshTask:Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;
    iget-object v1, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v1, v0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->execute(Lcom/android/quicksearchbox/util/NamedTask;)V

    .line 66
    .end local v0           #refreshTask:Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;
    .end local v4           #extraData:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mRefreshed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 99
    return-void
.end method

.method public shouldRefresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 72
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher;->mRefreshed:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/SourceShortcutRefresher;->makeKey(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
