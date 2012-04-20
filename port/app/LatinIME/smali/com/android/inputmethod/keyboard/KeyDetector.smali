.class public Lcom/android/inputmethod/keyboard/KeyDetector;
.super Ljava/lang/Object;
.source "KeyDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCorrectionX:I

.field private mCorrectionY:I

.field private final mDistances:[I

.field private final mIndices:[I

.field private final mKeyHysteresisDistanceSquared:I

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field private mProximityCorrectOn:Z

.field private mProximityThresholdSquare:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "keyHysteresisDistance"

    .prologue
    const/16 v1, 0xc

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mDistances:[I

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mIndices:[I

    .line 51
    mul-float v0, p1, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyHysteresisDistanceSquared:I

    .line 52
    return-void
.end method

.method private getNearbyKeyCodes([I)V
    .locals 10
    .parameter "allCodes"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 160
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v7

    iget-object v4, v7, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 161
    .local v4, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mIndices:[I

    .line 164
    .local v2, indices:[I
    aget v7, v2, v9

    if-ne v7, v8, :cond_1

    .line 165
    aput v8, p1, v9

    .line 180
    :cond_0
    return-void

    .line 169
    :cond_1
    const/4 v5, 0x0

    .line 170
    .local v5, numCodes:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 171
    aget v1, v2, v3

    .line 172
    .local v1, index:I
    if-eq v1, v8, :cond_0

    .line 174
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/inputmethod/keyboard/Key;

    iget v0, v7, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 176
    .local v0, code:I
    const/16 v7, 0x20

    if-ge v0, v7, :cond_2

    .line 170
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5           #numCodes:I
    .local v6, numCodes:I
    aput v0, p1, v5

    move v5, v6

    .end local v6           #numCodes:I
    .restart local v5       #numCodes:I
    goto :goto_1
.end method

.method private initializeNearbyKeys()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mDistances:[I

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 126
    return-void
.end method

.method private sortNearbyKeys(IIZ)I
    .locals 6
    .parameter "keyIndex"
    .parameter "distance"
    .parameter "isOnKey"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mDistances:[I

    .line 140
    .local v1, distances:[I
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mIndices:[I

    .line 141
    .local v2, indices:[I
    const/4 v3, 0x0

    .local v3, insertPos:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 142
    aget v0, v1, v3

    .line 143
    .local v0, comparingDistance:I
    if-lt p2, v0, :cond_0

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    .line 144
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 145
    .local v4, nextPos:I
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 146
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    :cond_1
    aput p2, v1, v3

    .line 152
    aput p1, v2, v3

    .line 156
    .end local v0           #comparingDistance:I
    .end local v3           #insertPos:I
    .end local v4           #nextPos:I
    :goto_1
    return v3

    .line 141
    .restart local v0       #comparingDistance:I
    .restart local v3       #insertPos:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v0           #comparingDistance:I
    :cond_3
    array-length v3, v1

    goto :goto_1
.end method


# virtual methods
.method public alwaysAllowsSlidingInput()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyHysteresisDistanceSquared()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyHysteresisDistanceSquared:I

    return v0
.end method

.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "allCodes"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v13

    iget-object v8, v13, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 195
    .local v8, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getTouchX(I)I

    move-result v11

    .line 196
    .local v11, touchX:I
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyDetector;->getTouchY(I)I

    move-result v12

    .line 198
    .local v12, touchY:I
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyDetector;->initializeNearbyKeys()V

    .line 199
    const/4 v10, -0x1

    .line 200
    .local v10, primaryIndex:I
    iget-object v13, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v13, v11, v12}, Lcom/android/inputmethod/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v1

    .local v1, arr$:[I
    array-length v9, v1

    .local v9, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v9, :cond_2

    aget v4, v1, v3

    .line 201
    .local v4, index:I
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/inputmethod/keyboard/Key;

    .line 202
    .local v7, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v7, v11, v12}, Lcom/android/inputmethod/keyboard/Key;->isOnKey(II)Z

    move-result v6

    .line 203
    .local v6, isOnKey:Z
    invoke-virtual {v7, v11, v12}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v2

    .line 204
    .local v2, distance:I
    if-nez v6, :cond_0

    iget-boolean v13, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mProximityCorrectOn:Z

    if-eqz v13, :cond_1

    iget v13, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mProximityThresholdSquare:I

    if-ge v2, v13, :cond_1

    .line 205
    :cond_0
    invoke-direct {p0, v4, v2, v6}, Lcom/android/inputmethod/keyboard/KeyDetector;->sortNearbyKeys(IIZ)I

    move-result v5

    .line 206
    .local v5, insertedPosition:I
    if-nez v5, :cond_1

    if-eqz v6, :cond_1

    .line 207
    move v10, v4

    .line 200
    .end local v5           #insertedPosition:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v2           #distance:I
    .end local v4           #index:I
    .end local v6           #isOnKey:Z
    .end local v7           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_2
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v13, v0

    if-lez v13, :cond_3

    .line 212
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyDetector;->getNearbyKeyCodes([I)V

    .line 221
    :cond_3
    return v10
.end method

.method public getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keyboard isn\'t set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0xc

    return v0
.end method

.method protected getTouchX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionX:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected getTouchY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionY:I

    add-int/2addr v0, p1

    return v0
.end method

.method public newCodeArray()[I
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyDetector;->getMaxNearbyKeys()I

    move-result v1

    new-array v0, v1, [I

    .line 119
    .local v0, codes:[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 120
    return-object v0
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V
    .locals 2
    .parameter "keyboard"
    .parameter "correctionX"
    .parameter "correctionY"

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 57
    :cond_0
    float-to-int v1, p2

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionX:I

    .line 58
    float-to-int v1, p3

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionY:I

    .line 59
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 60
    iget v0, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    .line 61
    .local v0, threshold:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mProximityThresholdSquare:I

    .line 62
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mProximityCorrectOn:Z

    .line 84
    return-void
.end method

.method public setProximityThreshold(I)V
    .locals 1
    .parameter "threshold"

    .prologue
    .line 91
    mul-int v0, p1, p1

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mProximityThresholdSquare:I

    .line 92
    return-void
.end method
