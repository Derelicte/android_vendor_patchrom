.class public Lcom/android/inputmethod/keyboard/MoreKeysDetector;
.super Lcom/android/inputmethod/keyboard/KeyDetector;
.source "MoreKeysDetector.java"


# instance fields
.field private final mSlideAllowanceSquare:I

.field private final mSlideAllowanceSquareTop:I


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .parameter "slideAllowance"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(F)V

    .line 27
    mul-float v0, p1, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquare:I

    .line 29
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquare:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquareTop:I

    .line 30
    return-void
.end method


# virtual methods
.method public alwaysAllowsSlidingInput()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "allCodes"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v8

    iget-object v3, v8, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 46
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->getTouchX(I)I

    move-result v6

    .line 47
    .local v6, touchX:I
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->getTouchY(I)I

    move-result v7

    .line 49
    .local v7, touchY:I
    const/4 v5, -0x1

    .line 50
    .local v5, nearestIndex:I
    if-gez p2, :cond_1

    iget v4, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquareTop:I

    .line 51
    .local v4, nearestDist:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 52
    .local v2, keyCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 53
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v8, v6, v7}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v0

    .line 54
    .local v0, dist:I
    if-ge v0, v4, :cond_0

    .line 55
    move v5, v1

    .line 56
    move v4, v0

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v0           #dist:I
    .end local v1           #index:I
    .end local v2           #keyCount:I
    .end local v4           #nearestDist:I
    :cond_1
    iget v4, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquare:I

    goto :goto_0

    .line 60
    .restart local v1       #index:I
    .restart local v2       #keyCount:I
    .restart local v4       #nearestDist:I
    :cond_2
    if-eqz p3, :cond_3

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 61
    const/4 v9, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/keyboard/Key;

    iget v8, v8, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    aput v8, p3, v9

    .line 62
    :cond_3
    return v5
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
