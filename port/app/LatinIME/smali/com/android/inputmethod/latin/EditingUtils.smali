.class public Lcom/android/inputmethod/latin/EditingUtils;
.super Ljava/lang/Object;
.source "EditingUtils.java"


# static fields
.field private static final spaceRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "connection"
    .parameter "sentenceSeperators"

    .prologue
    .line 172
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    .line 173
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    .local v0, prev:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "prev"
    .parameter "sentenceSeperators"

    .prologue
    const/4 v2, 0x0

    .line 188
    if-nez p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-object v2

    .line 189
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, w:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 195
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 196
    .local v0, lastChar:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method public static getThisWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "connection"
    .parameter "sentenceSeperators"

    .prologue
    .line 202
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 204
    :goto_0
    return-object v1

    .line 203
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 204
    .local v0, prev:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/EditingUtils;->getThisWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public static getThisWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "prev"
    .parameter "sentenceSeperators"

    .prologue
    const/4 v2, 0x0

    .line 215
    if-nez p0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v2

    .line 216
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, w:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 222
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 223
    .local v0, lastChar:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    goto :goto_0
.end method
