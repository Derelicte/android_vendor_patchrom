.class public Lcom/android/inputmethod/latin/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field private mAutoCapitalized:Z

.field private mCapsCount:I

.field private mCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mIsFirstCharCapitalized:Z

.field private mTypedWord:Ljava/lang/StringBuilder;

.field private mXCoordinates:[I

.field private mYCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x30

    .line 52
    .local v0, N:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 54
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    .line 55
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    .line 56
    return-void
.end method

.method private correctPrimaryJuxtapos(I[I)V
    .locals 4
    .parameter "primaryCode"
    .parameter "codes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    aget v0, p2, v2

    if-lez v0, :cond_0

    aget v0, p2, v3

    if-lez v0, :cond_0

    aget v0, p2, v2

    if-eq v0, p1, :cond_0

    aget v0, p2, v3

    if-ne v0, p1, :cond_0

    .line 141
    aget v0, p2, v2

    aput v0, p2, v3

    .line 142
    aput p1, p2, v2

    goto :goto_0
.end method

.method private static isFirstCharCapitalized(IIZ)Z
    .locals 1
    .parameter "index"
    .parameter "codePoint"
    .parameter "previous"

    .prologue
    .line 108
    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I[III)V
    .locals 3
    .parameter "primaryCode"
    .parameter "codes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    .line 119
    .local v0, newIndex:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/WordComposer;->correctPrimaryJuxtapos(I[I)V

    .line 121
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    aput p3, v1, v0

    .line 124
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    aput p4, v1, v0

    .line 126
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    invoke-static {v0, p1, v1}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized(IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 128
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 129
    :cond_1
    return-void
.end method

.method public deleteLast()V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v2

    .line 151
    .local v2, size:I
    if-lez v2, :cond_0

    .line 152
    add-int/lit8 v1, v2, -0x1

    .line 153
    .local v1, lastPos:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 154
    .local v0, lastChar:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 155
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 158
    .end local v0           #lastChar:C
    .end local v1           #lastPos:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 159
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 161
    :cond_1
    return-void
.end method

.method public getCodesAt(I)[I
    .locals 1
    .parameter "index"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getTypedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXCoordinates()[I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    return-object v0
.end method

.method public getYCoordinates()[I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    return-object v0
.end method

.method public isAllUpperCase()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCapitalized()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isFirstCharCapitalized()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 194
    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 79
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 80
    return-void
.end method

.method public setAutoCapitalized(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 204
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method
