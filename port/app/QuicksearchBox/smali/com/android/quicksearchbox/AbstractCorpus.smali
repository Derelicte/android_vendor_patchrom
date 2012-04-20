.class public abstract Lcom/android/quicksearchbox/AbstractCorpus;
.super Ljava/lang/Object;
.source "AbstractCorpus.java"

# interfaces
.implements Lcom/android/quicksearchbox/Corpus;


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/quicksearchbox/AbstractCorpus;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/quicksearchbox/AbstractCorpus;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractCorpus;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    .end local p1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractCorpus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractCorpus;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCorpusDefaultEnabled()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractCorpus;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/Config;->isCorpusEnabledByDefault(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v0

    return v0
.end method

.method public isCorpusHidden()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractCorpus;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractCorpus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/Config;->isCorpusHidden(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractCorpus;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
