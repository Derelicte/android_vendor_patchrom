.class Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
.super Ljava/lang/Object;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserBigramDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bigram"
.end annotation


# instance fields
.field public final mFrequency:I

.field public final mWord1:Ljava/lang/String;

.field public final mWord2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    .line 112
    iput p3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mFrequency:I

    .line 113
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "bigram"

    .prologue
    .line 117
    move-object v0, p1

    check-cast v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    .line 118
    .local v0, bigram2:Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
