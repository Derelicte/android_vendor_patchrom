.class Lcom/android/quicksearchbox/CachingIconLoader$Entry;
.super Lcom/android/quicksearchbox/util/CachedLater;
.source "CachingIconLoader.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/CachingIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/util/CachedLater",
        "<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;",
        "Lcom/android/quicksearchbox/util/Consumer",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private mCreateRequested:Z

.field private mDrawable:Lcom/android/quicksearchbox/util/NowOrLater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGotDrawable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/quicksearchbox/util/CachedLater;-><init>()V

    .line 107
    return-void
.end method

.method private getLater()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mDrawable:Lcom/android/quicksearchbox/util/NowOrLater;

    .line 130
    .local v0, drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mDrawable:Lcom/android/quicksearchbox/util/NowOrLater;

    .line 131
    invoke-interface {v0, p0}, Lcom/android/quicksearchbox/util/NowOrLater;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V

    .line 132
    return-void
.end method


# virtual methods
.method public consume(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 135
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->store(Ljava/lang/Object;)V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->consume(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized create()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mCreateRequested:Z

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mCreateRequested:Z

    .line 122
    iget-boolean v0, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mGotDrawable:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->getLater()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Lcom/android/quicksearchbox/util/NowOrLater;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mGotDrawable:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "set() may only be called once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mGotDrawable:Z

    .line 112
    iput-object p1, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mDrawable:Lcom/android/quicksearchbox/util/NowOrLater;

    .line 113
    iget-boolean v0, p0, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->mCreateRequested:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->getLater()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_1
    monitor-exit p0

    return-void
.end method
