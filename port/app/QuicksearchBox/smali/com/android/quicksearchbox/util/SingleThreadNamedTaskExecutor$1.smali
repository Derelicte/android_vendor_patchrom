.class final Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor$1;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Factory",
        "<",
        "Lcom/android/quicksearchbox/util/NamedTaskExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor$1;->create()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    return-object v0
.end method
