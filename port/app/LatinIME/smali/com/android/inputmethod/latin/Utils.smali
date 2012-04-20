.class public Lcom/android/inputmethod/latin/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;,
        Lcom/android/inputmethod/latin/Utils$RingCharBuffer;,
        Lcom/android/inputmethod/latin/Utils$GCUtils;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static DBG_EDIT_DISTANCE:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/inputmethod/latin/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/Utils;->DBG_EDIT_DISTANCE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D
    .locals 16
    .parameter "before"
    .parameter "after"
    .parameter "score"

    .prologue
    .line 401
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 402
    .local v2, beforeLength:I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 403
    .local v1, afterLength:I
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v10, 0x0

    .line 422
    :goto_0
    return-wide v10

    .line 404
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/android/inputmethod/latin/Utils;->editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 407
    .local v3, distance:I
    const/4 v7, 0x0

    .line 408
    .local v7, spaceCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 409
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_2

    .line 410
    add-int/lit8 v7, v7, 0x1

    .line 408
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 413
    :cond_3
    if-ne v7, v1, :cond_4

    const-wide/16 v10, 0x0

    goto :goto_0

    .line 414
    :cond_4
    const v10, 0x7fffffff

    move/from16 v0, p2

    if-ne v0, v10, :cond_5

    const-wide v5, 0x41dfffffffc00000L

    .line 421
    .local v5, maximumScore:D
    :goto_2
    const-wide/high16 v10, 0x3ff0

    int-to-double v12, v3

    int-to-double v14, v1

    div-double/2addr v12, v14

    sub-double v8, v10, v12

    .line 422
    .local v8, weight:D
    move/from16 v0, p2

    int-to-double v10, v0

    div-double/2addr v10, v5

    mul-double/2addr v10, v8

    goto :goto_0

    .line 414
    .end local v5           #maximumScore:D
    .end local v8           #weight:D
    :cond_5
    const-wide v10, 0x406fe00000000000L

    const-wide/high16 v12, 0x4000

    sub-int v14, v1, v7

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000

    mul-double v5, v10, v12

    goto :goto_2
.end method

.method public static canBeFollowedByPeriod(I)Z
    .locals 1
    .parameter "codePoint"

    .prologue
    .line 208
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "key"
    .parameter "csv"

    .prologue
    const/4 v4, 0x0

    .line 604
    if-nez p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v4

    .line 606
    :cond_1
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 607
    .local v3, option:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 608
    const/4 v4, 0x1

    goto :goto_0

    .line 606
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 14
    .parameter "s"
    .parameter "t"

    .prologue
    .line 323
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 324
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "editDistance: Arguments should not be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 326
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 327
    .local v6, sl:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 328
    .local v8, tl:I
    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 329
    .local v1, dp:[[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, v6, :cond_2

    .line 330
    aget-object v9, v1, v2

    const/4 v10, 0x0

    aput v2, v9, v10

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    :cond_2
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-gt v3, v8, :cond_3

    .line 333
    const/4 v9, 0x0

    aget-object v9, v1, v9

    aput v3, v9, v3

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 335
    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_7

    .line 336
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_6

    .line 337
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 338
    .local v5, sc:C
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    .line 339
    .local v7, tc:C
    if-ne v5, v7, :cond_5

    const/4 v0, 0x0

    .line 340
    .local v0, cost:I
    :goto_4
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    add-int/lit8 v10, v3, 0x1

    aget-object v11, v1, v2

    add-int/lit8 v12, v3, 0x1

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-object v12, v1, v12

    aget v12, v12, v3

    add-int/lit8 v12, v12, 0x1

    aget-object v13, v1, v2

    aget v13, v13, v3

    add-int/2addr v13, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v10

    .line 343
    if-lez v2, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v9, v3, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v5, v9, :cond_4

    add-int/lit8 v9, v2, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v7, v9, :cond_4

    .line 346
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v2, 0x1

    aget-object v11, v1, v11

    add-int/lit8 v12, v3, 0x1

    aget v11, v11, v12

    add-int/lit8 v12, v2, -0x1

    aget-object v12, v1, v12

    add-int/lit8 v13, v3, -0x1

    aget v12, v12, v13

    add-int/2addr v12, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v10

    .line 336
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 339
    .end local v0           #cost:I
    :cond_5
    const/4 v0, 0x1

    goto :goto_4

    .line 335
    .end local v5           #sc:C
    .end local v7           #tc:C
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 350
    :cond_7
    sget-boolean v9, Lcom/android/inputmethod/latin/Utils;->DBG_EDIT_DISTANCE:Z

    if-eqz v9, :cond_9

    .line 351
    sget-object v9, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "editDistance:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v2, 0x0

    :goto_5
    array-length v9, v1

    if-ge v2, v9, :cond_9

    .line 353
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 354
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    :goto_6
    aget-object v9, v1, v2

    array-length v9, v9

    if-ge v3, v9, :cond_8

    .line 355
    aget-object v9, v1, v2

    aget v9, v9, v3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 357
    :cond_8
    sget-object v9, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 360
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_9
    aget-object v9, v1, v6

    aget v9, v9, v8

    return v9
.end method

.method public static equalsIgnoreCase(CC)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 647
    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 660
    if-ne p0, p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v2

    .line 662
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 663
    goto :goto_0

    .line 664
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 665
    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    move v2, v3

    .line 666
    goto :goto_0

    .line 667
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 668
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(CC)Z

    move-result v4

    if-nez v4, :cond_5

    move v2, v3

    .line 669
    goto :goto_0

    .line 667
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z
    .locals 5
    .parameter "a"
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 687
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_1

    .line 688
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_1
    if-nez p0, :cond_4

    .line 691
    if-nez p3, :cond_3

    .line 698
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 691
    goto :goto_0

    .line 692
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v3, p3, :cond_5

    move v1, v2

    .line 693
    goto :goto_0

    .line 694
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 695
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    aget-char v4, p1, v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(CC)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 696
    goto :goto_0

    .line 694
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F
    .locals 10
    .parameter "sp"
    .parameter "res"

    .prologue
    const/high16 v7, -0x4080

    .line 798
    const-string v8, "pref_keypress_sound_volume"

    invoke-interface {p0, v8, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 799
    .local v5, volume:F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_0

    .line 810
    .end local v5           #volume:F
    :goto_0
    return v5

    .line 803
    .restart local v5       #volume:F
    :cond_0
    const v8, 0x7f0c000d

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, volumePerHardwareList:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, hardwarePrefix:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 806
    .local v1, element:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 807
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_0

    .line 805
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #element:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 810
    goto :goto_0
.end method

.method public static getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .locals 10
    .parameter "sp"
    .parameter "res"

    .prologue
    const/4 v7, -0x1

    .line 782
    const-string v8, "pref_vibration_duration_settings"

    invoke-interface {p0, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 783
    .local v6, ms:I
    if-ltz v6, :cond_0

    .line 794
    .end local v6           #ms:I
    :goto_0
    return v6

    .line 786
    .restart local v6       #ms:I
    :cond_0
    const v8, 0x7f0c000c

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, durationPerHardwareList:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, hardwarePrefix:Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 790
    .local v2, element:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 791
    const/16 v7, 0x2c

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v6, v7

    goto :goto_0

    .line 789
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2           #element:Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 794
    goto :goto_0
.end method

.method public static getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1
    .parameter "locale"
    .parameter "returnsNameInThisLocale"

    .prologue
    .line 745
    if-eqz p1, :cond_0

    .line 746
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getFullDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 748
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInputMethodId(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "imm"
    .parameter "packageName"

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/Utils;->getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .locals 5
    .parameter "imm"
    .parameter "packageName"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 164
    .local v1, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    invoke-virtual {v1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    return-object v1

    .line 167
    .end local v1           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find input method id for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I
    .locals 4
    .parameter "editorInfo"

    .prologue
    const/4 v2, 0x0

    .line 574
    if-nez p0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v2

    .line 577
    :cond_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 578
    .local v0, inputType:I
    and-int/lit16 v1, v0, 0xff0

    .line 580
    .local v1, variation:I
    and-int/lit8 v3, v0, 0xf

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 587
    :pswitch_0
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    const/4 v2, 0x2

    goto :goto_0

    .line 583
    :pswitch_1
    const/4 v2, 0x5

    goto :goto_0

    .line 585
    :pswitch_2
    const/4 v2, 0x4

    goto :goto_0

    .line 589
    :cond_2
    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 590
    const/4 v2, 0x1

    goto :goto_0

    .line 591
    :cond_3
    const/16 v3, 0x40

    if-ne v1, v3, :cond_4

    .line 592
    const/4 v2, 0x3

    goto :goto_0

    .line 593
    :cond_4
    const/16 v3, 0xb0

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getMainDictionaryResourceId(Landroid/content/res/Resources;)I
    .locals 3
    .parameter

    .prologue
    .line 626
    const-string v0, "main"

    .line 627
    const-class v0, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 628
    const-string v1, "main"

    const-string v2, "raw"

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMiddleDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 757
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 762
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasMultipleEnabledIMEsOrSubtypes(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    const/4 v2, 0x0

    .line 123
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 125
    .local v5, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    if-le v2, v10, :cond_1

    .line 151
    .end local v5           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    :goto_1
    return v10

    .line 126
    .restart local v5       #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    :cond_1
    invoke-virtual {p0, v5, v10}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v8

    .line 129
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x0

    .line 135
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 136
    .local v7, subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-virtual {v7}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 140
    .end local v7           #subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 145
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p1, :cond_0

    if-le v0, v10, :cond_0

    .line 146
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 147
    goto :goto_0

    .line 151
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v9}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .parameter "packageName"
    .parameter "key"
    .parameter "editorInfo"

    .prologue
    .line 615
    if-nez p2, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 617
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_1
    iget-object v0, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/Utils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static loadNativeLibrary()V
    .locals 3

    .prologue
    .line 633
    :try_start_0
    const-string v1, "jni_latinime"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 634
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 635
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Could not load native library jni_latinime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeDupes(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 734
    :cond_0
    return-void

    .line 719
    :cond_1
    const/4 v1, 0x1

    .line 721
    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 722
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 724
    .local v0, cur:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 725
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 726
    .local v3, previous:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 727
    invoke-static {p0, v1}, Lcom/android/inputmethod/latin/Utils;->removeFromSuggestions(Ljava/util/ArrayList;I)V

    .line 728
    add-int/lit8 v1, v1, -0x1

    .line 732
    .end local v3           #previous:Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 733
    goto :goto_0

    .line 724
    .restart local v3       #previous:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static removeFromSuggestions(Ljava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 739
    .local v0, garbage:Ljava/lang/CharSequence;
    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 740
    check-cast v0, Ljava/lang/StringBuilder;

    .end local v0           #garbage:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/inputmethod/latin/StringBuilderPool;->recycle(Ljava/lang/StringBuilder;)V

    .line 742
    :cond_0
    return-void
.end method

.method public static shouldBlockAutoCorrectionBySafetyNet(Lcom/android/inputmethod/latin/SuggestedWords;Lcom/android/inputmethod/latin/Suggest;)Z
    .locals 10
    .parameter "suggestions"
    .parameter "suggest"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    .line 201
    :goto_0
    return v5

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/Suggest;->isAggressiveAutoCorrectionMode()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 183
    .local v3, typedWord:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v8, 0x4

    if-ge v5, v8, :cond_3

    move v5, v6

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 185
    .local v2, suggestionWord:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 186
    .local v4, typedWordLength:I
    const/4 v5, 0x5

    if-ge v4, v5, :cond_6

    const/4 v5, 0x2

    :goto_1
    add-int/lit8 v1, v5, 0x1

    .line 188
    .local v1, maxEditDistanceOfNativeDictionary:I
    invoke-static {v3, v2}, Lcom/android/inputmethod/latin/Utils;->editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 189
    .local v0, distance:I
    sget-boolean v5, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    if-eqz v5, :cond_4

    .line 190
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Autocorrected edit distance = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_4
    if-le v0, v1, :cond_7

    .line 194
    sget-boolean v5, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    if-eqz v5, :cond_5

    .line 195
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Safety net: before = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", after = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    const-string v6, "(Error) The edit distance of this correction exceeds limit. Turning off auto-correction."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v5, v7

    .line 199
    goto :goto_0

    .line 186
    .end local v0           #distance:I
    .end local v1           #maxEditDistanceOfNativeDictionary:I
    :cond_6
    div-int/lit8 v5, v4, 0x2

    goto :goto_1

    .restart local v0       #distance:I
    .restart local v1       #maxEditDistanceOfNativeDictionary:I
    :cond_7
    move v5, v6

    .line 201
    goto/16 :goto_0
.end method

.method public static toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    .line 766
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 778
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static willAutoCorrect(Lcom/android/inputmethod/latin/SuggestedWords;)Z
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->shouldBlockAutoCorrection()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
