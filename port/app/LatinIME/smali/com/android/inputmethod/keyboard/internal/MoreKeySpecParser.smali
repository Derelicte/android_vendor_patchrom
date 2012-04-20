.class public Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;
.super Ljava/lang/Object;
.source "MoreKeySpecParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;,
        Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;
    }
.end annotation


# static fields
.field public static final DIGIT_FILTER:Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->TAG:Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$1;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$1;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->DIGIT_FILTER:Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static filterOut(Landroid/content/res/Resources;[Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;)[Ljava/lang/CharSequence;
    .locals 7
    .parameter "res"
    .parameter "moreKeys"
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 201
    if-eqz p1, :cond_0

    array-length v5, p1

    if-ge v5, v6, :cond_2

    :cond_0
    move-object p1, v4

    .line 228
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 204
    .restart local p1
    :cond_2
    array-length v5, p1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getCode(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;->shouldFilterOut(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object p1, v4

    .line 206
    goto :goto_0

    .line 208
    :cond_3
    const/4 v0, 0x0

    .line 209
    .local v0, filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_6

    .line 210
    aget-object v3, p1, v1

    .line 211
    .local v3, moreKeySpec:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getCode(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;->shouldFilterOut(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 212
    if-nez v0, :cond_5

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .restart local v0       #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 215
    aget-object v5, p1, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 218
    .end local v2           #j:I
    :cond_4
    if-eqz v0, :cond_5

    .line 219
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    .end local v3           #moreKeySpec:Ljava/lang/CharSequence;
    :cond_6
    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    move-object p1, v4

    .line 226
    goto :goto_0

    .line 228
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    move-object p1, v4

    goto :goto_0
.end method

.method public static getCode(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 7
    .parameter "res"
    .parameter "moreKeySpec"

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->hasCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, end:I
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 144
    new-instance v4, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple |: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_0
    const-string v4, "|"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    const-string v5, "@"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getResourceId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    .line 147
    .local v3, resId:I
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 156
    .end local v1           #end:I
    .end local v3           #resId:I
    :cond_1
    :goto_0
    return v0

    .line 150
    :cond_2
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_1

    .line 152
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, label:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public static getIconId(Ljava/lang/String;)I
    .locals 7
    .parameter "moreKeySpec"

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const-string v4, "|"

    const-string v5, "@icon/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, end:I
    const-string v4, "@icon/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, iconId:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 170
    .end local v1           #end:I
    .end local v2           #iconId:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 165
    .restart local v1       #end:I
    .restart local v2       #iconId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal icon id specified: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "moreKeySpec"

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->hasIcon(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const/4 v1, 0x0

    .line 115
    :cond_0
    return-object v1

    .line 110
    :cond_1
    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, end:I
    if-lez v0, :cond_2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, label:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    .end local v1           #label:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOutputText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "moreKeySpec"

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->hasCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v2

    .line 121
    :cond_1
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, end:I
    if-lez v0, :cond_3

    .line 123
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 124
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple |: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_2
    const-string v3, "|"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, outputText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty outputText: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v2           #outputText:Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, label:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 133
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v2, v1

    .line 137
    goto :goto_0
.end method

.method private static getResourceId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 5
    .parameter "res"
    .parameter "name"

    .prologue
    .line 174
    const v2, 0x7f0b0075

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, resId:I
    if-nez v1, :cond_0

    .line 177
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_0
    return v1
.end method

.method private static hasCode(Ljava/lang/String;)Z
    .locals 4
    .parameter "moreKeySpec"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, end:I
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@integer/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v1, 0x1

    .line 69
    :cond_0
    return v1
.end method

.method private static hasIcon(Ljava/lang/String;)Z
    .locals 4
    .parameter "moreKeySpec"

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v2, "@icon/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {p0, v1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, end:I
    if-lez v0, :cond_1

    .line 57
    const/4 v1, 0x1

    .line 60
    .end local v0           #end:I
    :cond_0
    return v1

    .line 58
    .restart local v0       #end:I
    :cond_1
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outputText or code not specified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static indexOfLabelEnd(Ljava/lang/String;I)I
    .locals 7
    .parameter "moreKeySpec"
    .parameter "start"

    .prologue
    const/16 v5, 0x5c

    .line 89
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_0

    .line 90
    const-string v4, "|"

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, end:I
    if-nez v1, :cond_3

    .line 92
    new-instance v4, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "| at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    .end local v1           #end:I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 96
    .local v2, length:I
    move v3, p1

    .local v3, pos:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 97
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    .local v0, c:C
    if-ne v0, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_2

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 96
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_2
    const-string v4, "|"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 104
    .end local v0           #c:C
    .end local v2           #length:I
    .end local v3           #pos:I
    :cond_3
    :goto_1
    return v1

    .restart local v2       #length:I
    .restart local v3       #pos:I
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static parseEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x5c

    .line 73
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 85
    .end local p0
    :goto_0
    return-object p0

    .line 75
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 76
    .local v1, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 79
    .local v0, c:C
    if-ne v0, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_1

    .line 80
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 85
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
