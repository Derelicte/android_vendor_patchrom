.class Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;
.super Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;
.source "KeyStyles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyStyles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredKeyStyle"
.end annotation


# instance fields
.field private final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyStyles$1;)V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyStyles$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->addParent(Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->parseKeyStyleAttributes(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private addParent(Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;)V
    .locals 2
    .parameter "parentStyle"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 210
    return-void
.end method

.method private parseKeyStyleAttributes(Landroid/content/res/TypedArray;)V
    .locals 1
    .parameter "keyAttr"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 167
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 168
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 169
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readTextArray(Landroid/content/res/TypedArray;I)V

    .line 171
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readFlag(Landroid/content/res/TypedArray;I)V

    .line 172
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 173
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 174
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 175
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 176
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 177
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readBoolean(Landroid/content/res/TypedArray;I)V

    .line 178
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readBoolean(Landroid/content/res/TypedArray;I)V

    .line 179
    return-void
.end method

.method private readBoolean(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 198
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    return-void
.end method

.method private readFlag(Landroid/content/res/TypedArray;I)V
    .locals 5
    .parameter "a"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 193
    .local v0, value:Ljava/lang/Integer;
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_1
    return-void
.end method

.method private readInt(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 187
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    return-void
.end method

.method private readText(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 182
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    return-void
.end method

.method private readTextArray(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 203
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->parseTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 204
    .local v0, value:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public getBoolean(Landroid/content/res/TypedArray;IZ)Z
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 157
    .local v0, value:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .end local p3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v1

    return v1
.end method

.method public getFlag(Landroid/content/res/TypedArray;II)I
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 151
    .local v0, value:Ljava/lang/Integer;
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getFlag(Landroid/content/res/TypedArray;II)I

    move-result v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    or-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInt(Landroid/content/res/TypedArray;II)I
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 145
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .end local p3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v1

    return v1
.end method

.method public getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 138
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    check-cast v0, [Ljava/lang/CharSequence;

    goto :goto_0
.end method
