.class Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;
.super Ljava/lang/Object;
.source "KeyStyles.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyStyles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyKeyStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyStyles$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;-><init>()V

    return-void
.end method

.method static parseCsvText(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 84
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 85
    .local v4, size:I
    if-nez v4, :cond_0

    const/4 v6, 0x0

    .line 122
    :goto_0
    return-object v6

    .line 86
    :cond_0
    if-ne v4, v7, :cond_1

    new-array v6, v7, [Ljava/lang/CharSequence;

    aput-object p0, v6, v8

    goto :goto_0

    .line 87
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 89
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .line 90
    .local v5, start:I
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_1
    if-ge v2, v4, :cond_9

    .line 91
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 92
    .local v0, c:C
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_5

    .line 93
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 95
    invoke-interface {p0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_2
    add-int/lit8 v5, v2, 0x1

    .line 90
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 102
    :cond_5
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_8

    .line 103
    if-ne v5, v2, :cond_6

    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 108
    :cond_6
    if-ge v5, v2, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 109
    invoke-interface {p0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 110
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 111
    if-ge v2, v4, :cond_3

    .line 112
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 114
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 118
    .end local v0           #c:C
    :cond_9
    if-nez v1, :cond_b

    .line 119
    new-array v6, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a

    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_4
    aput-object v3, v6, v8

    goto :goto_0

    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_a
    invoke-interface {p0, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    .line 121
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_c

    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 121
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_c
    invoke-interface {p0, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_5
.end method

.method protected static parseTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->parseCsvText(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getBoolean(Landroid/content/res/TypedArray;IZ)Z
    .locals 1
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getFlag(Landroid/content/res/TypedArray;II)I
    .locals 1
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/res/TypedArray;II)I
    .locals 1
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 63
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->parseTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
